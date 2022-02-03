{
  description = ''XXTEA encryption algorithm library written in pure Nim.'';
  inputs.src-xxtea-master.flake = false;
  inputs.src-xxtea-master.type = "github";
  inputs.src-xxtea-master.owner = "xxtea";
  inputs.src-xxtea-master.repo = "xxtea-nim";
  inputs.src-xxtea-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xxtea-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xxtea-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xxtea-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}