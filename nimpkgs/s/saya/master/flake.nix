{
  description = ''Nim framework for VK'';
  inputs.src-saya-master.flake = false;
  inputs.src-saya-master.type = "github";
  inputs.src-saya-master.owner = "Ethosa";
  inputs.src-saya-master.repo = "saya_nim";
  inputs.src-saya-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-saya-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-saya-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-saya-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}