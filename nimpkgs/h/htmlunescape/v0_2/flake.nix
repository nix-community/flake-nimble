{
  description = ''Port of Python's html.escape and html.unescape to Nim'';
  inputs.src-htmlunescape-v0_2.flake = false;
  inputs.src-htmlunescape-v0_2.type = "github";
  inputs.src-htmlunescape-v0_2.owner = "AmanoTeam";
  inputs.src-htmlunescape-v0_2.repo = "htmlunescape";
  inputs.src-htmlunescape-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, src-htmlunescape-v0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-htmlunescape-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-htmlunescape-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}