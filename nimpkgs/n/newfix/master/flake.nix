{
  description = ''FIX Protocol optimized parser (Financial Information eXchange)'';
  inputs.src-newfix-master.flake = false;
  inputs.src-newfix-master.type = "github";
  inputs.src-newfix-master.owner = "inv2004";
  inputs.src-newfix-master.repo = "newfix";
  inputs.src-newfix-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-newfix-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-newfix-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-newfix-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}