{
  description = ''An implementation of the observer pattern'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-nimobserver-master.flake = false;
  inputs.src-nimobserver-master.type = "github";
  inputs.src-nimobserver-master.owner = "Tangdongle";
  inputs.src-nimobserver-master.repo = "nimobserver";
  inputs.src-nimobserver-master.ref = "refs/heads/master";
  inputs.src-nimobserver-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimobserver-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimobserver-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimobserver-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}