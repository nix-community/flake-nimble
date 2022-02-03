{
  description = ''Humanize elapsed time'';
  inputs.src-eternity-v0_3_0.flake = false;
  inputs.src-eternity-v0_3_0.type = "github";
  inputs.src-eternity-v0_3_0.owner = "hiteshjasani";
  inputs.src-eternity-v0_3_0.repo = "nim-eternity";
  inputs.src-eternity-v0_3_0.ref = "refs/tags/v0.3.0";
  
  outputs = { self, nixpkgs, src-eternity-v0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eternity-v0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eternity-v0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}