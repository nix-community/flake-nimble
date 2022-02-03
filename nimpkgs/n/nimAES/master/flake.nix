{
  description = ''Advanced Encryption Standard, Rijndael Algorithm'';
  inputs.src-nimAES-master.flake = false;
  inputs.src-nimAES-master.type = "github";
  inputs.src-nimAES-master.owner = "jangko";
  inputs.src-nimAES-master.repo = "nimAES";
  inputs.src-nimAES-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimAES-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimAES-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimAES-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}