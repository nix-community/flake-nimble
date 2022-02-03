{
  description = ''A glue wrapper to do awk-style text processing with Nim'';
  inputs.src-naw-master.flake = false;
  inputs.src-naw-master.type = "github";
  inputs.src-naw-master.owner = "capocasa";
  inputs.src-naw-master.repo = "naw";
  inputs.src-naw-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-naw-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-naw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-naw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}