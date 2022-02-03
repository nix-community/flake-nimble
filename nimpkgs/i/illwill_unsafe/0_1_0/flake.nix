{
  description = ''A fork of John Novak (john@johnnovak.net)'s illwill package that is less safe numbers wise'';
  inputs.src-illwill_unsafe-0_1_0.flake = false;
  inputs.src-illwill_unsafe-0_1_0.type = "github";
  inputs.src-illwill_unsafe-0_1_0.owner = "matthewjcavalier";
  inputs.src-illwill_unsafe-0_1_0.repo = "illwill_unsafe";
  inputs.src-illwill_unsafe-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-illwill_unsafe-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-illwill_unsafe-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-illwill_unsafe-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}