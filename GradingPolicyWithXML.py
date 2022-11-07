{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;\red191\green100\blue38;\red32\green32\blue32;\red153\green168\blue186;
\red88\green118\blue71;\red254\green187\blue91;\red117\green114\blue185;\red86\green132\blue173;}
{\*\expandedcolortbl;;\csgenericrgb\c74902\c39216\c14902;\csgenericrgb\c12549\c12549\c12549;\csgenericrgb\c60000\c65882\c72941;
\csgenericrgb\c34510\c46275\c27843;\csgenericrgb\c99608\c73333\c35686;\csgenericrgb\c45882\c44706\c72549;\csgenericrgb\c33725\c51765\c67843;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs26 \cf2 \cb3 import \cf4 xml.etree.ElementTree \cf2 as \cf4 ET\
tree = ET.parse(\cf5 'gradingPolicy.xml.py'\cf4 )\
root = tree.getroot()\
\
\cf2 def \cf6 calculate_gpa\cf4 (score):\
    status = \{\}\
    \cf2 for \cf4 child \cf2 in \cf4 root:\
        start = \cf7 float\cf4 (child.attrib[\cf5 'start'\cf4 ])\
        \cf2 if \cf4 score >= start:\
            status = child.attrib\
            \cf2 break\
\
    return \cf4 status\
\
scores = [\cf8 60\cf2 , \cf8 70\cf2 , \cf8 80\cf2 , \cf8 90\cf2 , \cf8 100\cf4 ]\
\cf2 for \cf4 score \cf2 in \cf4 scores:\
    x = calculate_gpa(score)\
    x[\cf5 'input score'\cf4 ] = score\
    \cf7 print\cf4 (x)\
\
\
x = calculate_gpa(\cf8 77\cf4 )\
\cf7 print\cf4 (x)\
}