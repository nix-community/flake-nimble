{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
  inputs.src-htmlunescape-master.flake = false;
  inputs.src-htmlunescape-master.type = "github";
  inputs.src-htmlunescape-master.owner = "AmanoTeam";
  inputs.src-htmlunescape-master.repo = "htmlunescape";
  inputs.src-htmlunescape-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-htmlunescape-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlunescape-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htmlunescape-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}