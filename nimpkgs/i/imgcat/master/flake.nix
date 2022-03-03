{
  description = ''See pictures in your console'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-imgcat-master.flake = false;
  inputs.src-imgcat-master.type = "github";
  inputs.src-imgcat-master.owner = "not-lum";
  inputs.src-imgcat-master.repo = "imgcat";
  inputs.src-imgcat-master.ref = "refs/heads/master";
  inputs.src-imgcat-master.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."imageman".type = "github";
  # inputs."imageman".owner = "riinr";
  # inputs."imageman".repo = "flake-nimble";
  # inputs."imageman".ref = "flake-pinning";
  # inputs."imageman".dir = "nimpkgs/i/imageman";
  # inputs."imageman".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."imageman".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  
  # inputs."argparse".type = "github";
  # inputs."argparse".owner = "riinr";
  # inputs."argparse".repo = "flake-nimble";
  # inputs."argparse".ref = "flake-pinning";
  # inputs."argparse".dir = "nimpkgs/a/argparse";
  # inputs."argparse".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."argparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-imgcat-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-imgcat-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-imgcat-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}