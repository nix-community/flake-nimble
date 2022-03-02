{
  description = ''Wrapper for OpenSSL's EVP interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."openssl_evp-master".type = "github";
  inputs."openssl_evp-master".owner = "riinr";
  inputs."openssl_evp-master".repo = "flake-nimble";
  inputs."openssl_evp-master".ref = "flake-pinning";
  inputs."openssl_evp-master".dir = "nimpkgs/o/openssl_evp/master";
  inputs."openssl_evp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."openssl_evp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}