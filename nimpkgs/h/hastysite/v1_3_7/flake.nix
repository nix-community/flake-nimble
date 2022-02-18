{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-hastysite-v1_3_7.flake = false;
  inputs.src-hastysite-v1_3_7.type = "github";
  inputs.src-hastysite-v1_3_7.owner = "h3rald";
  inputs.src-hastysite-v1_3_7.repo = "hastysite";
  inputs.src-hastysite-v1_3_7.ref = "refs/tags/v1.3.7";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastysite-v1_3_7, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_3_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastysite-v1_3_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}