{
  description = ''Consistent Overhead Byte Stuffing for Nim'';
  inputs.src-cobs-master.flake = false;
  inputs.src-cobs-master.type = "github";
  inputs.src-cobs-master.owner = "keyme";
  inputs.src-cobs-master.repo = "nim_cobs";
  inputs.src-cobs-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cobs-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cobs-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cobs-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}