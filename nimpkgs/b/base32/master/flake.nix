{
  description = ''Base32 library for Nim'';
  inputs.src-base32-master.flake = false;
  inputs.src-base32-master.type = "github";
  inputs.src-base32-master.owner = "OpenSystemsLab";
  inputs.src-base32-master.repo = "base32.nim";
  inputs.src-base32-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-base32-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base32-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-base32-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}