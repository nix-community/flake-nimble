{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';
  inputs.src-illwill_unsafe-master.flake = false;
  inputs.src-illwill_unsafe-master.type = "github";
  inputs.src-illwill_unsafe-master.owner = "matthewjcavalier";
  inputs.src-illwill_unsafe-master.repo = "illwill_unsafe";
  inputs.src-illwill_unsafe-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-illwill_unsafe-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-illwill_unsafe-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-illwill_unsafe-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}