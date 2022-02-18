{
  description = ''Wrapper around libopus'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-opussum-0_4_3.flake = false;
  inputs.src-opussum-0_4_3.type = "github";
  inputs.src-opussum-0_4_3.owner = "ire4ever1190";
  inputs.src-opussum-0_4_3.repo = "opussum";
  inputs.src-opussum-0_4_3.ref = "refs/tags/0.4.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-opussum-0_4_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-opussum-0_4_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-opussum-0_4_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}