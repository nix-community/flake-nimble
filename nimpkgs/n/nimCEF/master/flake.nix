{
  description = ''Nim wrapper for the Chromium Embedded Framework'';
  inputs.src-nimCEF-master.flake = false;
  inputs.src-nimCEF-master.type = "github";
  inputs.src-nimCEF-master.owner = "jangko";
  inputs.src-nimCEF-master.repo = "nimCEF";
  inputs.src-nimCEF-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimCEF-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimCEF-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimCEF-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}