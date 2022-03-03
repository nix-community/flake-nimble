{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-arturo-v0_9_7_2.flake = false;
  inputs.src-arturo-v0_9_7_2.type = "github";
  inputs.src-arturo-v0_9_7_2.owner = "arturo-lang";
  inputs.src-arturo-v0_9_7_2.repo = "arturo";
  inputs.src-arturo-v0_9_7_2.ref = "refs/tags/v0.9.7.2";
  inputs.src-arturo-v0_9_7_2.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arturo-v0_9_7_2, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_7_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_7_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}