{{
      config(
        tags=['dunesql'],
        alias=alias('ocr_operator_node_meta'),
        materialized = 'view',
        post_hook='{{ expose_spells(\'["avalanche_c"]\',
                    "sector",
                    "oracle",
                    "project",
                    "chainlink",
                    \'["linkpool_ryan", "linkpool_jon"]\') }}'
  )
}}

{% set linkpool = 'LinkPool' %},
{% set validationcapital = 'Validation Capital' %},
{% set anyblockanalytics = 'Anyblock' %},
{% set inotel = 'Inotel' %},
{% set dextrac = 'DexTrac' %},
{% set blockdaemon = 'Blockdaemon' %},
{% set simplyvc = 'Simply VC' %},
{% set linkriver = 'LinkRiver' %},
{% set validationcloud = 'Validation Cloud' %},
{% set fiews = 'Fiews' %},
{% set northwestnodes = 'NorthWest Nodes' %},
{% set lexisnexis = 'LexisNexis' %},
{% set a01node = '01Node' %},
{% set blocksizecapital = 'Blocksize Capital' %},
{% set chainlayer = 'Chainlayer' %},
{% set alphachain = 'Alpha Chain' %},
{% set p2porg = 'P2P.org' %},
{% set linkforest = 'LinkForest' %}

SELECT node_address, operator_name FROM (VALUES
  ('0x8772Ecc810a04627d58eBC1Db2bBc27bF90F6bb2', '{{dextrac}}'),
  ('0x5b17Db9668BB9CbFe87F416b4da1132b5193959D', '{{blockdaemon}}'),
  ('0xFb821dfde8F43ed6fbf970153585038b0b3B49CC', '{{simplyvc}}'),
  ('0x69Dd5981be8F53828b9A305666F91133dfc0FdD2', '{{linkpool}}'),
  ('0xA317eBD3dA5C29b6EA01742bbEa6BaCCEB10A297', '{{validationcapital}}'),
  ('0x5b17Db9668BB9CbFe87F416b4da1132b5193959D', '{{anyblockanalytics}}'),
  ('0x8EF62f0B88286AAF46142cacBB0058bf1F74607d', '{{inotel}}'),
  ('0x00B1943fFB046aC69E9618361f1eAd3ccE112fEa', '{{linkriver}}'),
  ('0xA317eBD3dA5C29b6EA01742bbEa6BaCCEB10A297', '{{validationcloud}}'),
  ('0x0499BEA33347cb62D79A9C0b1EDA01d8d329894c', '{{fiews}}'),
  ('0xa6cd0E363740069e4570a0dA03e7258108B399Ab', '{{northwestnodes}}'),
  ('0xD59D1073d5A1B77d4Cf36C6D4a287DDF7F67F348', '{{lexisnexis}}'),
  ('0x7666D648f6D0909DbCb010218d713c5CE576149A', '{{a01node}}'),
  ('0xe5b37dc608C73852F9c0f56E30f8d74D89b51C55', '{{blocksizecapital}}'),
  ('0xd877d01d972D28dBd28ed138c63173D07A024E5C', '{{chainlayer}}'),
  ('0x89da56e409dDef3C52BdCfBeFC9b595870880bAA', '{{alphachain}}'),
  ('0xfDA44C0BaE0ACFa9eEAaB91d6C103eDaE6001876', '{{p2porg}}'),
  ('0x574A2f48049D962cF2e66d4381823Af93817Cd81', '{{linkforest}}')
) AS tmp_node_meta(node_address, operator_name)
