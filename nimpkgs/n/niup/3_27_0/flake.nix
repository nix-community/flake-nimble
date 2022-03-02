{
  description = ''IUP FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-niup-3_27_0.flake = false;
  inputs.src-niup-3_27_0.type = "github";
  inputs.src-niup-3_27_0.owner = "dariolah";
  inputs.src-niup-3_27_0.repo = "niup";
  inputs.src-niup-3_27_0.ref = "refs/tags/3.27.0";
  inputs.src-niup-3_27_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niup-3_27_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_27_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}