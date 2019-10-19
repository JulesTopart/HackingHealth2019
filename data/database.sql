-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Oct 18, 2019 at 11:58 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `patho_search`
--

-- --------------------------------------------------------

--
-- Table structure for table `database`
--

CREATE TABLE `database` (
  `num_exam` text NOT NULL,
  `lib_organe` text NOT NULL,
  `lib_lesion` text NOT NULL,
  `rapport` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database`
--

INSERT INTO `database` (`num_exam`, `lib_organe`, `lib_lesion`, `rapport`) VALUES
('17G10', 'REGION CERVICO-VAGINALE', 'ODEREE ou NEOPLASIE INTRAEPITHELIALE II ou LESION INTRAEPITHELIALE DE HAUT GRADE', 'RENSEIGNEMENTS CLINIQUES frottis de dépistage. Stérilet EXAMEN MICROSCOPIQUE Frottis conventionnel Etalement de bonne qualité, bien interprétable. Présence de cellules endocervicales normales. Outre des cellules malpighiennes sans atypies, ce frottis comporte des éléments de petite taille au noyau parfois irrégulier avec un rapport nucléocytoplasmique élevé et quelques éléments avec halo périnucléaire et noyau plicaturé, pouvant faire discuter une infection virale. On ne peut exclure formellement une lésion intra-épithéliale de haut grade (ASC-H). CONCLUSION COL UTERIN (frottis) : ANOMALIE DES CELLULES MALPIGHIENNES : CELLULES MALPIGHIENNES ATYPIQUES SANS POUVOIR EXCLURE UNE LESION MALPIGHIENNE INTRA-EPITHELIALE DE HAUT GRADE (ASC-H). UN CONTROLE SERAIT SOUHAITABLE.'),
('17G100', 'REGION CERVICO-VAGINALE', 'MATERIEL MODEREMENT INFLAMMATOIRE', 'RENSEIGNEMENTS CLINIQUES frottis de dépistage grossesse EXAMEN MICROSCOPIQUE Frottis conventionnel. Etalement de bonne qualité, bien interprétable. Présence de cellules endocervicales normales. Frottis légèrement inflammatoire constitué de cellules malpighiennes superficielles et intermédiaires normales. CONCLUSION : COL UTERIN (frottis) : FROTTIS DISCRETEMENT INFLAMMATOIRE. ABSENCE DE LESION INTRA-EPITHELIALE OU DE SIGNE DE MALIGNITE.'),
('17G107', 'COL UTERIN - EXOCOL', 'MATERIEL NORMAL', 'RENSEIGNEMENTS CLINIQUES Frottis diagnostique pas de contraception non ménopausée ADK rectum en cours de traitement radiochimiothérapie EXAMEN MICROSCOPIQUE Frottis conventionnel. Etalement de bonne qualité, bien interprétable. Frottis comportant de nombreuses cellules endocervicales normales et de rares cellules malpighiennes. Pas d\'inflammation notable. CONCLUSION : COL UTERIN (frottis) : CELLULES ENDOCERVICALES NORMALES. ABSENCE DE LESION INTRA-EPITHELIALE OU DE SIGNE DE MALIGNITE. INTERPRETATION LIMITEE PAR LE FAIBLE NOMBRE DE CELLULES EXO-CERVICALES.'),
('17G107', 'REGION CERVICO-VAGINALE', 'MATERIEL SANS VALEUR PAR INSUFFISANCE CELLULAIRE', 'RENSEIGNEMENTS CLINIQUES Frottis diagnostique pas de contraception non ménopausée ADK rectum en cours de traitement radiochimiothérapie EXAMEN MICROSCOPIQUE Frottis conventionnel. Etalement de bonne qualité, bien interprétable. Frottis comportant de nombreuses cellules endocervicales normales et de rares cellules malpighiennes. Pas d\'inflammation notable. CONCLUSION : COL UTERIN (frottis) : CELLULES ENDOCERVICALES NORMALES. ABSENCE DE LESION INTRA-EPITHELIALE OU DE SIGNE DE MALIGNITE. INTERPRETATION LIMITEE PAR LE FAIBLE NOMBRE DE CELLULES EXO-CERVICALES.'),
('17G108', 'REGION CERVICO-VAGINALE', 'FROTTIS DE TYPE ATROPHIQUE', '	RENSEIGNEMENTS CLINIQUES frottis de contrôle 1/au bilan post greffe ménopause EXAMEN MICROSCOPIQUE Frottis conventionnel. Etalement de bonne qualité, bien interprétable. Frottis atrophique constitué de cellules malpighiennes et de cellules endocervicales normales. Rares polynucléaires non altérés. CONCLUSION : COL UTERIN (frottis) : FROTTIS ATROPHIQUE POST-MENOPAUSIQUE. ABSENCE DE LESION INTRA-EPITHELIALE OU DE SIGNE DE MALIGNITE.'),
('17Z83', 'PERITOINE - CANAL DE NUCK', 'MATERIEL A PREDOMINANCE D\'HISTIOCYTES (MACROPHAGES)', 'RENSEIGNEMENTS CLINIQUES Liquide d\'ascite. Numération formule, tumeur ovaire droit. EXAMEN MACROSCOPIQUE Reçu au laboratoire 6 ml de liquide jaune paille opaque visqueux à 17h09 le 05/01/2017 (prélèvement du 05/01 à 17h). Une lame de cytocentrifugation a été réalisée à partir de la suspension cellulaire. Elle a été colorée par la technique de Diff-Quick. Après centrifugation du reste de l\'échantillon, quatre lames d\'étalements ont été réalisées à partir du culot puis colorées par la technique de Papanicolaou. EXAMEN MICROSCOPIQUE Ce matériel renferme : 1) 5.600 hématies par mm3 2) 4.200 éléments nucléés par mm3 répartis selon la formule suivante : - macrophages : 35 % - polynucléaires neutrophiles : 50 % - lymphocytes : 15 % Cette formule a été réalisée sur 153 cellules. Les étalements se révèlent très riches en cellules d’allure macrophagique avec des noyaux sans atypie évidente et des cytoplasmes plus ou moins abondants et micro-vacuolisés. Il s’y associe d’exceptionnelles cellules présentant des noyaux augmentés de volume ou irréguliers dont on ne peut déterminer la nature exacte.Pas de technique complémentaire possible. CONCLUSION : LIQUIDE D’ASCITE (cytologie) : Matériel riche en cellules d’allure macrophagique, avec d’exceptionnelles cellules atypiques dont on ne peut déterminer la nature bénigne ou maligne.'),
('19Y131', 'VESSIE - OURAQUE', 'LESION COMMUNIQUEE (SAI)', 'RENSEIGNEMENTS CLINIQUES Biologie moléculaire. Demande extérieure. Réf. : H170130075 ETUDE IMMUNOHISTOCHIMIQUE SUR COUPES EN PARAFFINE Automate Roche Ventana Benchmark XT et Ultra ; MSH6 (Agilent technologies, clone EP49, 1/50) PMS2  (Agilent technologies, clone EP51, 1/50) MLH1 (ROCHE, clone G168 ou M1, prêt à l\'emploi) MSH2 (ROCHE, clone G219-1129, prêt à l\'emploi)   Les cellules tumorales présentent le phénotype suivant : MLH1+, MSH2+, MSH6+, PMS2+. Interprétation : Absence de perte d\'expression des protéines du système MMR. Ce résultat est en faveur d\'un statut MSS.');
