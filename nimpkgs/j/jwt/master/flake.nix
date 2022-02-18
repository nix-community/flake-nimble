{
  description = ''JSON Web Tokens for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-jwt-master.flake = false;
  inputs.src-jwt-master.type = "github";
  inputs.src-jwt-master.owner = "yglukhov";
  inputs.src-jwt-master.repo = "nim-jwt";
  inputs.src-jwt-master.ref = "refs/heads/master";
  
  
  inputs."bearssl".type = "github";
  inputs."bearssl".owner = "riinr";
  inputs."bearssl".repo = "flake-nimble";
  inputs."bearssl".ref = "flake-pinning";
  inputs."bearssl".dir = "nimpkgs/b/bearssl";

  
  inputs."https://github.com/yglukhov/bearssl_pkey_decoder".type = "github";
  inputs."https://github.com/yglukhov/bearssl_pkey_decoder".owner = "riinr";
  inputs."https://github.com/yglukhov/bearssl_pkey_decoder".repo = "flake-nimble";
  inputs."https://github.com/yglukhov/bearssl_pkey_decoder".ref = "flake-pinning";
  inputs."https://github.com/yglukhov/bearssl_pkey_decoder".dir = "nimpkgs/h/https://github.com/yglukhov/bearssl_pkey_decoder";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jwt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}