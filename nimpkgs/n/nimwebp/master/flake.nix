{
  description = ''Webp encoder and decoder bindings for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimwebp-master.flake = false;
  inputs.src-nimwebp-master.type = "github";
  inputs.src-nimwebp-master.owner = "tormund";
  inputs.src-nimwebp-master.repo = "nimwebp";
  inputs.src-nimwebp-master.ref = "refs/heads/master";
  inputs.src-nimwebp-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."nimpng".type = "github";
  # inputs."nimpng".owner = "riinr";
  # inputs."nimpng".repo = "flake-nimble";
  # inputs."nimpng".ref = "flake-pinning";
  # inputs."nimpng".dir = "nimpkgs/n/nimpng";
  # inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."https://github.com/yglukhov/clurp".type = "github";
  # inputs."https://github.com/yglukhov/clurp".owner = "riinr";
  # inputs."https://github.com/yglukhov/clurp".repo = "flake-nimble";
  # inputs."https://github.com/yglukhov/clurp".ref = "flake-pinning";
  # inputs."https://github.com/yglukhov/clurp".dir = "nimpkgs/h/https://github.com/yglukhov/clurp";
  # inputs."https://github.com/yglukhov/clurp".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."https://github.com/yglukhov/clurp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimwebp-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimwebp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimwebp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}