{
  description = ''Too awesome procs to be included in nimrod.os module'';
  inputs.src-genieos-v9_4_0-tiffany.flake = false;
  inputs.src-genieos-v9_4_0-tiffany.type = "github";
  inputs.src-genieos-v9_4_0-tiffany.owner = "Araq";
  inputs.src-genieos-v9_4_0-tiffany.repo = "genieos";
  inputs.src-genieos-v9_4_0-tiffany.ref = "refs/tags/v9.4.0-tiffany";
  
  outputs = { self, nixpkgs, src-genieos-v9_4_0-tiffany, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-v9_4_0-tiffany;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genieos-v9_4_0-tiffany"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}