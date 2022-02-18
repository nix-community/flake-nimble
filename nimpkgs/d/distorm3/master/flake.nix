{
  description = ''Nim wrapper for distorm3 - Powerful Disassembler Library For x86/AMD64'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-distorm3-master.flake = false;
  inputs.src-distorm3-master.type = "github";
  inputs.src-distorm3-master.owner = "ba0f3";
  inputs.src-distorm3-master.repo = "distorm3.nim";
  inputs.src-distorm3-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-distorm3-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-distorm3-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-distorm3-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}