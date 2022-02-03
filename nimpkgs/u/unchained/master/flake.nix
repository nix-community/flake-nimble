{
  description = ''Fully type safe, compile time only units library'';
  inputs.src-unchained-master.flake = false;
  inputs.src-unchained-master.type = "github";
  inputs.src-unchained-master.owner = "SciNim";
  inputs.src-unchained-master.repo = "unchained";
  inputs.src-unchained-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-unchained-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-unchained-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-unchained-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}