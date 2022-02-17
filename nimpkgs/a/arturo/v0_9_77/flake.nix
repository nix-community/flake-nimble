{
  description = ''Simple, modern and portable interpreted programming language for efficient scripting'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-arturo-v0_9_77.flake = false;
  inputs.src-arturo-v0_9_77.type = "github";
  inputs.src-arturo-v0_9_77.owner = "arturo-lang";
  inputs.src-arturo-v0_9_77.repo = "arturo";
  inputs.src-arturo-v0_9_77.ref = "refs/tags/v0.9.77";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-arturo-v0_9_77, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-arturo-v0_9_77;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-arturo-v0_9_77"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}