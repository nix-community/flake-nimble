{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-arturo-v0_9_6_5.flake = false;
  inputs.src-arturo-v0_9_6_5.type = "github";
  inputs.src-arturo-v0_9_6_5.owner = "arturo-lang";
  inputs.src-arturo-v0_9_6_5.repo = "arturo";
  inputs.src-arturo-v0_9_6_5.ref = "refs/tags/v0.9.6.5";
  inputs.src-arturo-v0_9_6_5.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arturo-v0_9_6_5, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_6_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_6_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}