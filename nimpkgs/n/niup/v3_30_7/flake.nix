{
  description = ''IUP FFI bindings'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-niup-v3_30_7.flake = false;
  inputs.src-niup-v3_30_7.type = "github";
  inputs.src-niup-v3_30_7.owner = "dariolah";
  inputs.src-niup-v3_30_7.repo = "niup";
  inputs.src-niup-v3_30_7.ref = "refs/tags/v3.30.7";
  inputs.src-niup-v3_30_7.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-niup-v3_30_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-niup-v3_30_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-niup-v3_30_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}