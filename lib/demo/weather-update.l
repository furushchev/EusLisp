;;;; 
;;;; TOKYO-FM �ߥ���饸�� ŷ������
;;;;
;;;	January, 2003 (c) Toshihiro Matsui
;;;
;;;	�������ʺ����� ���Τ��ޤ� [������]
;;;	�������������� ������
;;;	������� ���ޤ�����γ�Ψ ��� ���� ���� ������
;;;	��������ͽ�۵����ʺ����� �ǹ� ����
;;;
;;;	�������ʺ���� ���Τ��� [������]
;;;	�������������� �Ϥ� [��]
;;;	������� ��ޤ��ϱ��γ�Ψ ���� ������ ���� ����
;;;	��������ͽ�۵����������� ���� ���� �ǹ� ����  
;;;

(require :http "http")
(require :time "time")
(require :webnews "webnews")
(require :pgsql "pgsql")


;; ŷ��ʬ��
(defparameter *jma-weather-gif-url*
	"http://www.jma.go.jp/JMA_HP/jp/mesh20/japan-cond-1.gif")
;;
;; ����ʬ��
(defparameter *jma-temp-gif-url*
	"http://www.jma.go.jp/JMA_HP/jp/mesh20/japan-temp-1.gif")
;;
;; �߿���ʬ��
(defparameter *jma-precip-gif-url*
	"http://www.jma.go.jp/JMA_HP/jp/mesh20/japan-rain-1.gif")
;;
;; ������
(defparameter *jma-snow-gif-url*
	"http://www.jma.go.jp/JMA_HP/jp/mesh20/japan-snow-1.gif")


;; SQL to create weather table;
;;

#| 
drop table weather_report;
drop sequence weather_report_id_seq;

create table weather_report (
	id serial,
	recdate date,
	rectime time,
	weekday int4,
	location text,
	weather text,
	temp    text,
	wet_probability text
	);
|#

(defun update-weather-report ()
  (let (now db
	tokyo-pattern temp-pattern wet-probability-pattern
	weather-html weather-body
	tokyo-weather tokyo-temp wet-probability
	gif weather-oid temp-oid precip-oid snow-oid
	)
	(setq tokyo-pattern "�������")
	(setq temp-pattern "��������ͽ�۵���")
	(setq wet-probability-pattern "������� ��ޤ��ϱ��γ�Ψ ")
	;;
	;; (setq today-pattern "�������ʺ�����  ")
	;; (setq tonight-pattern "�������ʺ���� ")
	;; (setq today-temp-pattern "��������ͽ�۵����ʺ�����  ")
	;; (setq tomorrow-temp-pattern "��������ͽ�۵����������� ")
	;
	(setq weather-html (read-http *tokyo-fm-weather-url*))
	(setq weather-body (cadr weather-html))
	;
	;; We expect the weather forecast appears earlier than temp and probability.
	(setq tokyo-weather
		(caaar (html-marked-items weather-body tokyo-pattern 'br '/body t)))
	(setq tokyo-temp
		(caaar (html-marked-items weather-body temp-pattern 'br '/body t)))
	(setq wet-probability
		(caaar (html-marked-items weather-body wet-probability-pattern 'br '/body t)))
	(if (null wet-probability) (setq wet-probability ""))
	;
	;;; We've got three kinds of info:
	;;;   tokyo-weather= today's weather in Tokyo
	;;;   tokyo-temp= today's or tomorrows temperature
	;;;   wet-probability= probability for snow or rain 
	;
	(setq now (instance calendar-time :now))
	(setq db (instance pq:pgsql :init :dbname "t.matsui"))
	;;
	;; read gifs from JMA (����ģ) and insert them into large objects
	(setq gif (read-http *jma-weather-gif-url*))
	(setq weather-oid (send db :lo-put (cadr gif)))
	(setq gif (read-http *jma-temp-gif-url*))
	(setq temp-oid (send db :lo-put (cadr gif)))
	(setq gif (read-http *jma-precip-gif-url*))
	(setq precip-oid (send db :lo-put (cadr gif)))
	(setq gif (read-http *jma-snow-gif-url*))
	(setq snow-oid (send db :lo-put (cadr gif)))
	;;
#|
	(format *error-output* "~a: ~a ~%" (send now :iso-string)
	 (format nil "insert into weather_report
		(recdate,  rectime, weekday,
		 location, weather, temp, wet_probability,
		 weather_gif, temp_gif, precip_gif, snow_gif)
		values ('~a', '~a', ~d, '~a', '~a', '~a', '~a', 
			~d, ~d, ~d, ~d)"
		(send now :iso-date-string)
		(send now :iso-time-string)
		(send now :weekday)
		"Tokyo"
		tokyo-weather tokyo-temp wet-probability
		weather-oid temp-oid precip-oid snow-oid)
	  ) |#
	;
	(send db :exec
	 (format nil "insert into weather_report
		(recdate,  rectime, weekday,
		 location, weather, temp, wet_probability,
		 weather_gif, temp_gif, precip_gif, snow_gif)
		values ('~a', '~a', ~d, '~a', '~a', '~a', '~a', 
			~d, ~d, ~d, ~d)"
		(send now :iso-date-string)
		(send now :iso-time-string)
		(send now :weekday)
		"Tokyo"
		tokyo-weather tokyo-temp wet-probability
		weather-oid temp-oid precip-oid snow-oid)
	  )
        )
	)


