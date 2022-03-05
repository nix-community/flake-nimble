{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-arturo-0_9_4.flake = false;
  inputs.src-arturo-0_9_4.type = "github";
  inputs.src-arturo-0_9_4.owner = "arturo-lang";
  inputs.src-arturo-0_9_4.repo = "arturo";
  inputs.src-arturo-0_9_4.ref = "refs/tags/0.9.4";
  inputs.src-arturo-0_9_4.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arturo-0_9_4, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-0_9_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-0_9_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}