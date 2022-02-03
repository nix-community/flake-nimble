{
  description = ''Library for parsing text/gemini'';
  inputs.src-parsegemini-master.flake = false;
  inputs.src-parsegemini-master.type = "github";
  inputs.src-parsegemini-master.owner = "autumngray";
  inputs.src-parsegemini-master.repo = "parsegemini";
  inputs.src-parsegemini-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-parsegemini-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-parsegemini-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-parsegemini-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}