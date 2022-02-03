{
  description = ''This library makes your code run as a daemon process on Unix-like systems'';
  inputs.src-daemonize-0_0_1.flake = false;
  inputs.src-daemonize-0_0_1.type = "github";
  inputs.src-daemonize-0_0_1.owner = "OpenSystemsLab";
  inputs.src-daemonize-0_0_1.repo = "daemonize.nim";
  inputs.src-daemonize-0_0_1.ref = "refs/tags/0.0.1";
  
  outputs = { self, nixpkgs, src-daemonize-0_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-daemonize-0_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-daemonize-0_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}