{
  description = ''Thin lib to find if chrome exists on Windows, Mac, or Linux.'';
  inputs.src-nimchromepath-master.flake = false;
  inputs.src-nimchromepath-master.type = "github";
  inputs.src-nimchromepath-master.owner = "felipetesc";
  inputs.src-nimchromepath-master.repo = "NimChromePath";
  inputs.src-nimchromepath-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimchromepath-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimchromepath-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimchromepath-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}