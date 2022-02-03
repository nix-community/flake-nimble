{
  description = ''Too awesome procs to be included in nimrod.os module'';
  inputs.src-genieos-v9_0_0-taeyeon.flake = false;
  inputs.src-genieos-v9_0_0-taeyeon.type = "github";
  inputs.src-genieos-v9_0_0-taeyeon.owner = "Araq";
  inputs.src-genieos-v9_0_0-taeyeon.repo = "genieos";
  inputs.src-genieos-v9_0_0-taeyeon.ref = "refs/tags/v9.0.0-taeyeon";
  
  outputs = { self, nixpkgs, src-genieos-v9_0_0-taeyeon, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-genieos-v9_0_0-taeyeon;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-genieos-v9_0_0-taeyeon"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}