{
  description = ''Infer & generate command-line interace/option/argument parsers'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cligen-v0_9_46.flake = false;
  inputs.src-cligen-v0_9_46.type = "github";
  inputs.src-cligen-v0_9_46.owner = "c-blake";
  inputs.src-cligen-v0_9_46.repo = "cligen";
  inputs.src-cligen-v0_9_46.ref = "refs/tags/v0.9.46";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-cligen-v0_9_46, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cligen-v0_9_46;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cligen-v0_9_46"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}