{
  description = ''Game Boy Advance development library'';
  inputs.src-natu-master.flake = false;
  inputs.src-natu-master.type = "github";
  inputs.src-natu-master.owner = "exelotl";
  inputs.src-natu-master.repo = "natu";
  inputs.src-natu-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-natu-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-natu-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-natu-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}