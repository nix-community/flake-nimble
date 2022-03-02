{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-arturo-v0_9_78.flake = false;
  inputs.src-arturo-v0_9_78.type = "github";
  inputs.src-arturo-v0_9_78.owner = "arturo-lang";
  inputs.src-arturo-v0_9_78.repo = "arturo";
  inputs.src-arturo-v0_9_78.ref = "refs/tags/v0.9.78";
  inputs.src-arturo-v0_9_78.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arturo-v0_9_78, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_78;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_78"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}