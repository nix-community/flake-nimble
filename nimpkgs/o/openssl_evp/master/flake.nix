{
  description = ''Wrapper for OpenSSL's EVP interface'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-openssl_evp-master.flake = false;
  inputs.src-openssl_evp-master.type = "github";
  inputs.src-openssl_evp-master.owner = "cowboy-coders";
  inputs.src-openssl_evp-master.repo = "nim-openssl-evp";
  inputs.src-openssl_evp-master.ref = "refs/heads/master";
  inputs.src-openssl_evp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimrod".type = "github";
  # inputs."nimrod".owner = "riinr";
  # inputs."nimrod".repo = "flake-nimble";
  # inputs."nimrod".ref = "flake-pinning";
  # inputs."nimrod".dir = "nimpkgs/n/nimrod";
  # inputs."nimrod".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimrod".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-openssl_evp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openssl_evp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-openssl_evp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}