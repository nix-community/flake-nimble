{
  description = ''Ladder logic macros for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-ladder-0_4_0.flake = false;
  inputs.src-ladder-0_4_0.type = "gitlab";
  inputs.src-ladder-0_4_0.owner = "ryukoposting";
  inputs.src-ladder-0_4_0.repo = "nim-ladder";
  inputs.src-ladder-0_4_0.ref = "refs/tags/0.4.0";
  inputs.src-ladder-0_4_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-ladder-0_4_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ladder-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-ladder-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}