{
  description = ''Humanize elapsed time'';
  inputs.src-eternity-v0_2.flake = false;
  inputs.src-eternity-v0_2.type = "github";
  inputs.src-eternity-v0_2.owner = "hiteshjasani";
  inputs.src-eternity-v0_2.repo = "nim-eternity";
  inputs.src-eternity-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, src-eternity-v0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eternity-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eternity-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}