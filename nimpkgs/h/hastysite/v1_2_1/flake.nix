{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-v1_2_1.flake = false;
  inputs.src-hastysite-v1_2_1.type = "github";
  inputs.src-hastysite-v1_2_1.owner = "h3rald";
  inputs.src-hastysite-v1_2_1.repo = "hastysite";
  inputs.src-hastysite-v1_2_1.ref = "refs/tags/v1.2.1";
  
  outputs = { self, nixpkgs, src-hastysite-v1_2_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_2_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-v1_2_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}