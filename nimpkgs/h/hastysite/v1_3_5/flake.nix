{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-v1_3_5.flake = false;
  inputs.src-hastysite-v1_3_5.type = "github";
  inputs.src-hastysite-v1_3_5.owner = "h3rald";
  inputs.src-hastysite-v1_3_5.repo = "hastysite";
  inputs.src-hastysite-v1_3_5.ref = "refs/tags/v1.3.5";
  
  outputs = { self, nixpkgs, src-hastysite-v1_3_5, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_3_5;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-v1_3_5"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}