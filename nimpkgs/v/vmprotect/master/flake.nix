{
  description = ''Wrapper for VMProtect SDK'';
  inputs.src-vmprotect-master.flake = false;
  inputs.src-vmprotect-master.type = "github";
  inputs.src-vmprotect-master.owner = "ba0f3";
  inputs.src-vmprotect-master.repo = "vmprotect.nim";
  inputs.src-vmprotect-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-vmprotect-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-vmprotect-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-vmprotect-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}