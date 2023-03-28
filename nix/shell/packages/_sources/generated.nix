# This file was generated by nvfetcher, please do not modify it manually.
{ fetchgit, fetchurl, fetchFromGitHub, dockerTools }:
{
  nu-plugin-from-parquet = {
    pname = "nu-plugin-from-parquet";
    version = "671fb194cd934b90f923388456c135f891d35eba";
    src = fetchFromGitHub ({
      owner = "fdncred";
      repo = "nu_plugin_from_parquet";
      rev = "671fb194cd934b90f923388456c135f891d35eba";
      fetchSubmodules = false;
      sha256 = "sha256-f2aDrWE8seGJuNQ3+xykpzJmekgIF/HtX9iQxHdEeqs=";
    });
    cargoLock."Cargo.lock" = {
      lockFile = ./nu-plugin-from-parquet-671fb194cd934b90f923388456c135f891d35eba/Cargo.lock;
      outputHashes = {
        
      };
    };
    date = "2023-03-09";
  };
  nu-plugin-regex = {
    pname = "nu-plugin-regex";
    version = "8ca882d7bdd73bd2e451863597901e1509195a92";
    src = fetchFromGitHub ({
      owner = "fdncred";
      repo = "nu_plugin_regex";
      rev = "8ca882d7bdd73bd2e451863597901e1509195a92";
      fetchSubmodules = false;
      sha256 = "sha256-czJkHcy7791hzQHlr4AA7I5KW54QO0d1HWDND4YcDTI=";
    });
    cargoLock."Cargo.lock" = {
      lockFile = ./nu-plugin-regex-8ca882d7bdd73bd2e451863597901e1509195a92/Cargo.lock;
      outputHashes = {
        
      };
    };
    date = "2023-02-22";
  };
  nushell = {
    pname = "nushell";
    version = "393717dbb42943d1238188e07d80610f9a7b69c3";
    src = fetchFromGitHub ({
      owner = "nushell";
      repo = "nushell";
      rev = "393717dbb42943d1238188e07d80610f9a7b69c3";
      fetchSubmodules = false;
      sha256 = "sha256-vl8oUd1Mime7On7xzKewnSTxXhpg3YVyCa+FcyQr2Zo=";
    });
    cargoLock."Cargo.lock" = {
      lockFile = ./nushell-393717dbb42943d1238188e07d80610f9a7b69c3/Cargo.lock;
      outputHashes = {
        "reedline-0.17.0" = "sha256-kLg+1FvOlQlZWVoYsVQk0tXMyEdFCRFCguYsEPNgr+4=";
      };
    };
    date = "2023-03-29";
  };
}
