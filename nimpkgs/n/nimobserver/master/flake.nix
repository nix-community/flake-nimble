{
  description = ''An implementation of the observer pattern'';
  inputs.src-nimobserver-master.flake = false;
  inputs.src-nimobserver-master.type = "github";
  inputs.src-nimobserver-master.owner = "Tangdongle";
  inputs.src-nimobserver-master.repo = "nimobserver";
  inputs.src-nimobserver-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimobserver-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimobserver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimobserver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}