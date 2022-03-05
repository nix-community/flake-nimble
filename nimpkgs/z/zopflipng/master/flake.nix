{
  description = ''zopflipng-like png optimization'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-zopflipng-master.flake = false;
  inputs.src-zopflipng-master.type = "github";
  inputs.src-zopflipng-master.owner = "bung87";
  inputs.src-zopflipng-master.repo = "zopflipng";
  inputs.src-zopflipng-master.ref = "refs/heads/master";
  inputs.src-zopflipng-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  inputs."nimpng".type = "github";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".repo = "flake-nimble";
  inputs."nimpng".ref = "flake-pinning";
  inputs."nimpng".dir = "nimpkgs/n/nimpng";
  inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-zopflipng-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zopflipng-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-zopflipng-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}