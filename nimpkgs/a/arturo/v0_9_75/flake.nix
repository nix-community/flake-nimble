{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-arturo-v0_9_75.flake = false;
  inputs.src-arturo-v0_9_75.type = "github";
  inputs.src-arturo-v0_9_75.owner = "arturo-lang";
  inputs.src-arturo-v0_9_75.repo = "arturo";
  inputs.src-arturo-v0_9_75.ref = "refs/tags/v0.9.75";
  inputs.src-arturo-v0_9_75.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arturo-v0_9_75, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_75;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_75"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}