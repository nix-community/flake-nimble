{
  description = ''An implementation of the observer pattern'';
  inputs.src-nimobserver-v0_1_1.flake = false;
  inputs.src-nimobserver-v0_1_1.type = "github";
  inputs.src-nimobserver-v0_1_1.owner = "Tangdongle";
  inputs.src-nimobserver-v0_1_1.repo = "nimobserver";
  inputs.src-nimobserver-v0_1_1.ref = "refs/tags/v0.1.1";
  
  outputs = { self, nixpkgs, src-nimobserver-v0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimobserver-v0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimobserver-v0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}