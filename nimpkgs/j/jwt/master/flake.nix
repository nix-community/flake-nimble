{
  description = ''JSON Web Tokens for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-jwt-master.flake = false;
  inputs.src-jwt-master.type = "github";
  inputs.src-jwt-master.owner = "yglukhov";
  inputs.src-jwt-master.repo = "nim-jwt";
  inputs.src-jwt-master.ref = "refs/heads/master";
  inputs.src-jwt-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."bearssl".type = "github";
  # inputs."bearssl".owner = "riinr";
  # inputs."bearssl".repo = "flake-nimble";
  # inputs."bearssl".ref = "flake-pinning";
  # inputs."bearssl".dir = "nimpkgs/b/bearssl";
  # inputs."bearssl".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."bearssl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".type = "github";
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".owner = "riinr";
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".dir = "nimpkgs/h/https://github.com/yglukhov/bearssl_pkey_decoder";
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/bearssl_pkey_decoder".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-jwt-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jwt-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-jwt-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}