{
  description = ''High performance http server (https://tools.ietf.org/html/rfc2616) with persistent connection for nim language.'';
  inputs.src-zfblast-v0_1_0.flake = false;
  inputs.src-zfblast-v0_1_0.type = "github";
  inputs.src-zfblast-v0_1_0.owner = "zendbit";
  inputs.src-zfblast-v0_1_0.repo = "nim.zfblast";
  inputs.src-zfblast-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-zfblast-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-zfblast-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-zfblast-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}