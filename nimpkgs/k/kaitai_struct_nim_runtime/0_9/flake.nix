{
  description = ''Kaitai Struct runtime library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-kaitai_struct_nim_runtime-0_9.flake = false;
  inputs.src-kaitai_struct_nim_runtime-0_9.type = "github";
  inputs.src-kaitai_struct_nim_runtime-0_9.owner = "kaitai-io";
  inputs.src-kaitai_struct_nim_runtime-0_9.repo = "kaitai_struct_nim_runtime";
  inputs.src-kaitai_struct_nim_runtime-0_9.ref = "refs/tags/0.9";
  inputs.src-kaitai_struct_nim_runtime-0_9.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-kaitai_struct_nim_runtime-0_9, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kaitai_struct_nim_runtime-0_9;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-kaitai_struct_nim_runtime-0_9"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}