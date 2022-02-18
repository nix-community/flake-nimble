{
  description = ''IUP FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-niup-3_27_6.flake = false;
  inputs.src-niup-3_27_6.type = "github";
  inputs.src-niup-3_27_6.owner = "dariolah";
  inputs.src-niup-3_27_6.repo = "niup";
  inputs.src-niup-3_27_6.ref = "refs/tags/3.27.6";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niup-3_27_6, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_6;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_27_6"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}