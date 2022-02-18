{
  description = ''IUP FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-niup-3_29_0.flake = false;
  inputs.src-niup-3_29_0.type = "github";
  inputs.src-niup-3_29_0.owner = "dariolah";
  inputs.src-niup-3_29_0.repo = "niup";
  inputs.src-niup-3_29_0.ref = "refs/tags/3.29.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niup-3_29_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_29_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_29_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}