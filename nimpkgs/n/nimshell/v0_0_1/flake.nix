{
  description = ''Library for shell scripting in nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimshell-v0_0_1.flake = false;
  inputs.src-nimshell-v0_0_1.type = "github";
  inputs.src-nimshell-v0_0_1.owner = "vegansk";
  inputs.src-nimshell-v0_0_1.repo = "nimshell";
  inputs.src-nimshell-v0_0_1.ref = "refs/tags/v0.0.1";
  inputs.src-nimshell-v0_0_1.inputs.nixpkgs.follows = "nixpkgs";
  
  
  # inputs."monad".type = "github";
  # inputs."monad".owner = "riinr";
  # inputs."monad".repo = "flake-nimble";
  # inputs."monad".ref = "flake-pinning";
  # inputs."monad".dir = "nimpkgs/m/monad";
  # inputs."monad".inputs.nixpkgs.follows = "nixpkgs";
  # inputs."monad".inputs.flakeNimbleLib.follows = "flakeNimbleLib";

  outputs = { self, nixpkgs, flakeNimbleLib, src-nimshell-v0_0_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimshell-v0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimshell-v0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}