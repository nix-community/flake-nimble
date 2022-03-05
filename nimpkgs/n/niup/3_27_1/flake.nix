{
  description = ''IUP FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-niup-3_27_1.flake = false;
  inputs.src-niup-3_27_1.type = "github";
  inputs.src-niup-3_27_1.owner = "dariolah";
  inputs.src-niup-3_27_1.repo = "niup";
  inputs.src-niup-3_27_1.ref = "refs/tags/3.27.1";
  inputs.src-niup-3_27_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niup-3_27_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-3_27_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niup-3_27_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}