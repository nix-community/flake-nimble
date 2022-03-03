{
  description = ''A Nim mini DSL to execute shell commands'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-shell-v0_2_3.flake = false;
  inputs.src-shell-v0_2_3.type = "github";
  inputs.src-shell-v0_2_3.owner = "Vindaar";
  inputs.src-shell-v0_2_3.repo = "shell";
  inputs.src-shell-v0_2_3.ref = "refs/tags/v0.2.3";
  inputs.src-shell-v0_2_3.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-shell-v0_2_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-shell-v0_2_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-shell-v0_2_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}